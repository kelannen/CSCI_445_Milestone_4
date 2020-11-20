.class Lcom/iot/engine/ChangePasscode$11;
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
    .line 224
    iput-object p1, p0, Lcom/iot/engine/ChangePasscode$11;->this$0:Lcom/iot/engine/ChangePasscode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$11;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v0, v0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$11;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v0, v0, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/iot/engine/ChangePasscode$11;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v1, v1, Lcom/iot/engine/ChangePasscode;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$11;->this$0:Lcom/iot/engine/ChangePasscode;

    invoke-static {v0}, Lcom/iot/engine/ChangePasscode;->access$000(Lcom/iot/engine/ChangePasscode;)V

    .line 235
    return-void
.end method
