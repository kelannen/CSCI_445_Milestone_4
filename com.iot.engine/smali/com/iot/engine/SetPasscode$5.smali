.class Lcom/iot/engine/SetPasscode$5;
.super Ljava/lang/Object;
.source "SetPasscode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/SetPasscode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/SetPasscode;


# direct methods
.method constructor <init>(Lcom/iot/engine/SetPasscode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/SetPasscode;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/iot/engine/SetPasscode$5;->this$0:Lcom/iot/engine/SetPasscode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/iot/engine/SetPasscode$5;->this$0:Lcom/iot/engine/SetPasscode;

    iget-object v1, v1, Lcom/iot/engine/SetPasscode;->btnFive:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Lcom/iot/engine/SetPasscode$5;->this$0:Lcom/iot/engine/SetPasscode;

    iget-object v1, v1, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/iot/engine/SetPasscode$5;->this$0:Lcom/iot/engine/SetPasscode;

    iget-object v1, v1, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lcom/iot/engine/SetPasscode$5;->this$0:Lcom/iot/engine/SetPasscode;

    invoke-static {v1}, Lcom/iot/engine/SetPasscode;->access$000(Lcom/iot/engine/SetPasscode;)V

    .line 138
    iget-object v1, p0, Lcom/iot/engine/SetPasscode$5;->this$0:Lcom/iot/engine/SetPasscode;

    invoke-static {v1}, Lcom/iot/engine/SetPasscode;->access$100(Lcom/iot/engine/SetPasscode;)V

    .line 141
    :cond_0
    return-void
.end method
