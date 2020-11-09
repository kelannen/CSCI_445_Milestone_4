.class Lcom/iot/engine/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/MainActivity;->alertDialogForDeleteAccount(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/MainActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$mMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/iot/engine/MainActivity;Ljava/util/HashMap;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/MainActivity;

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/iot/engine/MainActivity$6;->this$0:Lcom/iot/engine/MainActivity;

    iput-object p2, p0, Lcom/iot/engine/MainActivity$6;->val$mMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/iot/engine/MainActivity$6;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1270
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v1, p0, Lcom/iot/engine/MainActivity$6;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 1271
    .local v0, "db":LDatabase/DatabaseHandler;
    iget-object v1, p0, Lcom/iot/engine/MainActivity$6;->val$mMap:Ljava/util/HashMap;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->deleteUserAccountById(Ljava/lang/String;)V

    .line 1272
    iget-object v1, p0, Lcom/iot/engine/MainActivity$6;->this$0:Lcom/iot/engine/MainActivity;

    const-string v2, "User account is deleted successfully"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1273
    iget-object v1, p0, Lcom/iot/engine/MainActivity$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1274
    return-void
.end method
