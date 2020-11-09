.class Lcom/iot/engine/Login$2;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/Login;->createDeviceIdDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/Login;


# direct methods
.method constructor <init>(Lcom/iot/engine/Login;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/Login;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/iot/engine/Login$2;->this$0:Lcom/iot/engine/Login;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/iot/engine/Login$2;->this$0:Lcom/iot/engine/Login;

    iget-object v1, v1, Lcom/iot/engine/Login;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 169
    iget-object v1, p0, Lcom/iot/engine/Login$2;->this$0:Lcom/iot/engine/Login;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/iot/engine/Login;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 170
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/iot/engine/Login$2;->this$0:Lcom/iot/engine/Login;

    invoke-virtual {v1}, Lcom/iot/engine/Login;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 171
    return-void
.end method
