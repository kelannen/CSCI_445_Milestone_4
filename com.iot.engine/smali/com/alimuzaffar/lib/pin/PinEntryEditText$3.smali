.class Lcom/alimuzaffar/lib/pin/PinEntryEditText$3;
.super Ljava/lang/Object;
.source "PinEntryEditText.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alimuzaffar/lib/pin/PinEntryEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;


# direct methods
.method constructor <init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$3;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$3;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$3;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setSelection(I)V

    .line 198
    const/4 v0, 0x1

    return v0
.end method
