.class Lcom/iot/engine/ShareControl$1;
.super Ljava/lang/Object;
.source "ShareControl.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/ShareControl;->initializeControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/ShareControl;


# direct methods
.method constructor <init>(Lcom/iot/engine/ShareControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ShareControl;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/iot/engine/ShareControl$1;->this$0:Lcom/iot/engine/ShareControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/16 v2, 0x8

    .line 102
    sparse-switch p2, :sswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 105
    :sswitch_0
    iget-object v0, p0, Lcom/iot/engine/ShareControl$1;->this$0:Lcom/iot/engine/ShareControl;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/iot/engine/ShareControl;->access$002(Lcom/iot/engine/ShareControl;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/iot/engine/ShareControl$1;->this$0:Lcom/iot/engine/ShareControl;

    iget-object v0, v0, Lcom/iot/engine/ShareControl;->guestExpiryDay:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 110
    :sswitch_1
    iget-object v0, p0, Lcom/iot/engine/ShareControl$1;->this$0:Lcom/iot/engine/ShareControl;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/iot/engine/ShareControl;->access$002(Lcom/iot/engine/ShareControl;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/iot/engine/ShareControl$1;->this$0:Lcom/iot/engine/ShareControl;

    iget-object v0, v0, Lcom/iot/engine/ShareControl;->guestExpiryDay:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 115
    :sswitch_2
    iget-object v0, p0, Lcom/iot/engine/ShareControl$1;->this$0:Lcom/iot/engine/ShareControl;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/iot/engine/ShareControl;->access$002(Lcom/iot/engine/ShareControl;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/iot/engine/ShareControl$1;->this$0:Lcom/iot/engine/ShareControl;

    iget-object v0, v0, Lcom/iot/engine/ShareControl;->guestExpiryDay:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 120
    :sswitch_3
    iget-object v0, p0, Lcom/iot/engine/ShareControl$1;->this$0:Lcom/iot/engine/ShareControl;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/iot/engine/ShareControl;->access$002(Lcom/iot/engine/ShareControl;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/iot/engine/ShareControl$1;->this$0:Lcom/iot/engine/ShareControl;

    iget-object v0, v0, Lcom/iot/engine/ShareControl;->guestExpiryDay:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d013c -> :sswitch_0
        0x7f0d013d -> :sswitch_1
        0x7f0d013f -> :sswitch_3
        0x7f0d0252 -> :sswitch_2
    .end sparse-switch
.end method
