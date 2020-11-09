.class Lcom/iot/engine/ScheduleProfile$4;
.super Ljava/lang/Object;
.source "ScheduleProfile.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/ScheduleProfile;->TimePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/ScheduleProfile;


# direct methods
.method constructor <init>(Lcom/iot/engine/ScheduleProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ScheduleProfile;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/iot/engine/ScheduleProfile$4;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 5
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "selectedHour"    # I
    .param p3, "selectedMinute"    # I

    .prologue
    const/16 v4, 0xa

    .line 228
    const-string v1, ""

    .local v1, "mMin":Ljava/lang/String;
    const-string v0, ""

    .line 229
    .local v0, "mHour":Ljava/lang/String;
    if-ge p3, v4, :cond_0

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_0
    if-ge p2, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_1
    iget-object v2, p0, Lcom/iot/engine/ScheduleProfile$4;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v2}, Lcom/iot/engine/ScheduleProfile;->access$400(Lcom/iot/engine/ScheduleProfile;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/iot/engine/ScheduleProfile$4;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v2}, Lcom/iot/engine/ScheduleProfile;->access$400(Lcom/iot/engine/ScheduleProfile;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/ScheduleProfile$4;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v3}, Lcom/iot/engine/ScheduleProfile;->access$400(Lcom/iot/engine/ScheduleProfile;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 239
    iget-object v2, p0, Lcom/iot/engine/ScheduleProfile$4;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/iot/engine/ScheduleProfile;->hours:Ljava/lang/Integer;

    .line 240
    iget-object v2, p0, Lcom/iot/engine/ScheduleProfile$4;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/iot/engine/ScheduleProfile;->minutes:Ljava/lang/Integer;

    .line 241
    return-void

    .line 232
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 235
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
