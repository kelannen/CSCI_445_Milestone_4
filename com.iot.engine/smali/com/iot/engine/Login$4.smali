.class Lcom/iot/engine/Login$4;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/Login;->login()V
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
    .line 321
    iput-object p1, p0, Lcom/iot/engine/Login$4;->this$0:Lcom/iot/engine/Login;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/iot/engine/Login$4;->this$0:Lcom/iot/engine/Login;

    invoke-static {v0}, Lcom/iot/engine/Login;->access$300(Lcom/iot/engine/Login;)V

    .line 325
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 326
    iget-object v0, p0, Lcom/iot/engine/Login$4;->this$0:Lcom/iot/engine/Login;

    invoke-static {v0}, Lcom/iot/engine/Login;->access$1200(Lcom/iot/engine/Login;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/iot/engine/Login$4;->this$0:Lcom/iot/engine/Login;

    iget-object v1, p0, Lcom/iot/engine/Login$4;->this$0:Lcom/iot/engine/Login;

    invoke-virtual {v1}, Lcom/iot/engine/Login;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$000(Lcom/iot/engine/Login;Ljava/lang/String;)V

    .line 328
    return-void
.end method
