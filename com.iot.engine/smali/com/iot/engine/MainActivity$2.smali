.class Lcom/iot/engine/MainActivity$2;
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
    .line 532
    iput-object p1, p0, Lcom/iot/engine/MainActivity$2;->this$0:Lcom/iot/engine/MainActivity;

    iput-object p2, p0, Lcom/iot/engine/MainActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/iot/engine/MainActivity$2;->this$0:Lcom/iot/engine/MainActivity;

    invoke-virtual {v0}, Lcom/iot/engine/MainActivity;->logoutApp()V

    .line 536
    iget-object v0, p0, Lcom/iot/engine/MainActivity$2;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v0}, Lcom/iot/engine/MainActivity;->access$400(Lcom/iot/engine/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 537
    iget-object v0, p0, Lcom/iot/engine/MainActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 539
    return-void
.end method
