.class Lcom/iot/engine/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/MainActivity;->onClickOnLogoutMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/MainActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/iot/engine/MainActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/MainActivity;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/iot/engine/MainActivity$3;->this$0:Lcom/iot/engine/MainActivity;

    iput-object p2, p0, Lcom/iot/engine/MainActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 545
    iget-object v1, p0, Lcom/iot/engine/MainActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 546
    iget-object v1, p0, Lcom/iot/engine/MainActivity$3;->this$0:Lcom/iot/engine/MainActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/iot/engine/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 547
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/iot/engine/MainActivity$3;->this$0:Lcom/iot/engine/MainActivity;

    invoke-virtual {v1}, Lcom/iot/engine/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 548
    return-void
.end method
