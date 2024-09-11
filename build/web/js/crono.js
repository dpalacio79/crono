function CargarJSON(){
    const input = document.getElementById('file-input');
    const file = input.files[0];

    // Validación básica (puedes agregar más validaciones)
    if (!file) {
        alert('Por favor, selecciona un archivo');
        return false;
    }
    if (file.type !== 'application/json') {
        alert('El archivo seleccionado no es un JSON válido');
        return false;
    }
   
    const reader = new FileReader();
    reader.onload = function(e) {
        const jsonData = JSON.parse(e.target.result);

        $.ajax({
            url: 'tu_ruta_al_backend',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(jsonData),
            success: function(data) {
                console.log('Datos guardados en la base de datos:', data);
                alert('Archivo subido correctamente');
            },
            error: function(error) {
                console.error('Error al enviar los datos:', error);
                alert('Ocurrió un error al subir el archivo');
            }
        });
    };
    reader.readAsText(file);

    return false;
}


