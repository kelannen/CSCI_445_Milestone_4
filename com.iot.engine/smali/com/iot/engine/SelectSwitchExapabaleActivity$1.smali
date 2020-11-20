.class Lcom/iot/engine/SelectSwitchExapabaleActivity$1;
.super Ljava/lang/Object;
.source "SelectSwitchExapabaleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/SelectSwitchExapabaleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/SelectSwitchExapabaleActivity;


# direct methods
.method constructor <init>(Lcom/iot/engine/SelectSwitchExapabaleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/SelectSwitchExapabaleActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity$1;->this$0:Lcom/iot/engine/SelectSwitchExapabaleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity$1;->this$0:Lcom/iot/engine/SelectSwitchExapabaleActivity;

    invoke-static {v0}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->access$000(Lcom/iot/engine/SelectSwitchExapabaleActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity$1;->this$0:Lcom/iot/engine/SelectSwitchExapabaleActivity;

    iget-object v0, v0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->listAdapter:LAdapter/SelectSwitchExapableAdapter;

    const-string v1, "1"

    invoke-virtual {v0, v1}, LAdapter/SelectSwitchExapableAdapter;->changeAllDataSelection(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/SelectSwitchExapabaleActivity$1;->this$0:Lcom/iot/engine/SelectSwitchExapabaleActivity;

    iget-object v0, v0, Lcom/iot/engine/SelectSwitchExapabaleActivity;->listAdapter:LAdapter/SelectSwitchExapableAdapter;

    const-string v1, "0"

    invoke-virtual {v0, v1}, LAdapter/SelectSwitchExapableAdapter;->changeAllDataSelection(Ljava/lang/String;)V

    goto :goto_0
.end method
