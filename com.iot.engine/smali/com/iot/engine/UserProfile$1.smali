.class Lcom/iot/engine/UserProfile$1;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/UserProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/UserProfile;


# direct methods
.method constructor <init>(Lcom/iot/engine/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/iot/engine/UserProfile$1;->this$0:Lcom/iot/engine/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 91
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iot/engine/UserProfile$1;->this$0:Lcom/iot/engine/UserProfile;

    const-class v2, Lcom/iot/engine/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/iot/engine/UserProfile$1;->this$0:Lcom/iot/engine/UserProfile;

    invoke-virtual {v1, v0}, Lcom/iot/engine/UserProfile;->startActivity(Landroid/content/Intent;)V

    .line 93
    iget-object v1, p0, Lcom/iot/engine/UserProfile$1;->this$0:Lcom/iot/engine/UserProfile;

    const v2, 0x7f050015

    const v3, 0x7f050016

    invoke-virtual {v1, v2, v3}, Lcom/iot/engine/UserProfile;->overridePendingTransition(II)V

    .line 94
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f0d0156
        :pswitch_0
    .end packed-switch
.end method
