document.getElementById('contactForm').addEventListener('submit', function(event) {
  event.preventDefault();
  
  var phoneInput = document.getElementById('phone');
  var phoneValue = phoneInput.value.trim();
  
  // Проверка номера телефона
  var phonePattern = /^\+7\d{10}$/;
  if (!phonePattern.test(phoneValue)) {
    alert('Пожалуйста, введите номер телефона в формате +7XXXXXXXXXX');
    phoneInput.focus();
    return;
  }
  
  alert('Форма отправлена!');
});

document.getElementById("contactForm").addEventListener("submit", function(event) {
  event.preventDefault();
  
  // Получение данных формы
  let fullName = document.getElementById("fullName").value;
  let address = document.getElementById("address").value;
  let phone = document.getElementById("phone").value;
  let email = document.getElementById("email").value;
  
  // Валидация данных формы (например, проверка на пустые поля)
  if (fullName === "" || address === "" || phone === "" || email === "") {
    alert("Пожалуйста, заполните все обязательные поля");
    return;
  }
  
  // Отправка данных формы на сервер с помощью AJAX-запроса
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "index.php", true);
  xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      // Обработка успешного ответа от сервера
      // Здесь вы можете обновить таблицу ниже формы
      console.log(xhr.responseText);
    }
  };
  xhr.send("fullName=" + encodeURIComponent(fullName) +
           "&address=" + encodeURIComponent(address) +
           "&phone=" + encodeURIComponent(phone) +
           "&email=" + encodeURIComponent(email));
});