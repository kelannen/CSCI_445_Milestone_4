.class Lcom/iot/engine/ChangePasscode$12;
.super Ljava/lang/Object;
.source "ChangePasscode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/ChangePasscode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/ChangePasscode;


# direct methods
.method constructor <init>(Lcom/iot/engine/ChangePasscode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ChangePasscode;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/iot/engine/ChangePasscode$12;->this$0:Lcom/iot/engine/ChangePasscode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$12;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v0, v0, Lcom/iot/engine/ChangePasscode;->txtOne:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$12;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v0, v0, Lcom/iot/engine/ChangePasscode;->txtTwo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$12;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v0, v0, Lcom/iot/engine/ChangePasscode;->txtThree:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$12;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v0, v0, Lcom/iot/engine/ChangePasscode;->txtFour:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$12;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v0, v0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    return-void
.end method
