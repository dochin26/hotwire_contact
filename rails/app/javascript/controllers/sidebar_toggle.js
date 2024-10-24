document.addEventListener("turbo:load", function() {
  const sidebar = document.getElementById("sidebar");
  const toggleButton = document.getElementById("sidebar-toggle");
  const closeButton = document.getElementById("sidebar-close");

  // メニューがある場合のみ処理
  if (sidebar && toggleButton && closeButton) {
    // トグルボタンがクリックされたとき
    toggleButton.addEventListener("click", function() {
      sidebar.classList.toggle("active");
    });

    // 閉じるボタンがクリックされたとき
    closeButton.addEventListener("click", function() {
      sidebar.classList.remove("active");
    });
  }
});