.class Lcom/iot/engine/EditShareControl$1;
.super Ljava/lang/Object;
.source "EditShareControl.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/EditShareControl;->initControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/EditShareControl;


# direct methods
.method constructor <init>(Lcom/iot/engine/EditShareControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/EditShareControl;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/iot/engine/EditShareControl$1;->this$0:Lcom/iot/engine/EditShareControl;

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

    .line 109
    packed-switch p2, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$1;->this$0:Lcom/iot/engine/EditShareControl;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/iot/engine/EditShareControl;->access$002(Lcom/iot/engine/EditShareControl;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$1;->this$0:Lcom/iot/engine/EditShareControl;

    iget-object v0, v0, Lcom/iot/engine/EditShareControl;->guestExpiryDay:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$1;->this$0:Lcom/iot/engine/EditShareControl;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/iot/engine/EditShareControl;->access$002(Lcom/iot/engine/EditShareControl;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$1;->this$0:Lcom/iot/engine/EditShareControl;

    iget-object v0, v0, Lcom/iot/engine/EditShareControl;->guestExpiryDay:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$1;->this$0:Lcom/iot/engine/EditShareControl;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/iot/engine/EditShareControl;->access$002(Lcom/iot/engine/EditShareControl;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$1;->this$0:Lcom/iot/engine/EditShareControl;

    iget-object v0, v0, Lcom/iot/engine/EditShareControl;->guestExpiryDay:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 127
    :pswitch_3
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$1;->this$0:Lcom/iot/engine/EditShareControl;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/iot/engine/EditShareControl;->access$002(Lcom/iot/engine/EditShareControl;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$1;->this$0:Lcom/iot/engine/EditShareControl;

    iget-object v0, v0, Lcom/iot/engine/EditShareControl;->guestExpiryDay:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d013c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
