.class Lcom/iot/engine/SetPasscode$11;
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
    .line 214
    iput-object p1, p0, Lcom/iot/engine/SetPasscode$11;->this$0:Lcom/iot/engine/SetPasscode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/iot/engine/SetPasscode$11;->this$0:Lcom/iot/engine/SetPasscode;

    iget-object v0, v0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/iot/engine/SetPasscode$11;->this$0:Lcom/iot/engine/SetPasscode;

    iget-object v0, v0, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iot/engine/SetPasscode$11;->this$0:Lcom/iot/engine/SetPasscode;

    iget-object v1, v1, Lcom/iot/engine/SetPasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/SetPasscode$11;->this$0:Lcom/iot/engine/SetPasscode;

    invoke-static {v0}, Lcom/iot/engine/SetPasscode;->access$000(Lcom/iot/engine/SetPasscode;)V

    .line 225
    return-void
.end method
