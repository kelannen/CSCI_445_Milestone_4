.class Lcom/iot/engine/ChangePasscode$6;
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
    .line 137
    iput-object p1, p0, Lcom/iot/engine/ChangePasscode$6;->this$0:Lcom/iot/engine/ChangePasscode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    .line 140
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode$6;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v1, v1, Lcom/iot/engine/ChangePasscode;->btnSix:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode$6;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v1, v1, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode$6;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v1, v1, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode$6;->this$0:Lcom/iot/engine/ChangePasscode;

    invoke-static {v1}, Lcom/iot/engine/ChangePasscode;->access$000(Lcom/iot/engine/ChangePasscode;)V

    .line 146
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode$6;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v1, v1, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/iot/engine/ChangePasscode$6;->this$0:Lcom/iot/engine/ChangePasscode;

    invoke-static {v1}, Lcom/iot/engine/ChangePasscode;->access$100(Lcom/iot/engine/ChangePasscode;)V

    .line 152
    :cond_0
    return-void
.end method
