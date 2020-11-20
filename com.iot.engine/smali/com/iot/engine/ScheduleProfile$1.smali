.class Lcom/iot/engine/ScheduleProfile$1;
.super Ljava/lang/Object;
.source "ScheduleProfile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/ScheduleProfile;->onCreate(Landroid/os/Bundle;)V
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
    .line 138
    iput-object p1, p0, Lcom/iot/engine/ScheduleProfile$1;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 141
    if-eqz p2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile$1;->this$0:Lcom/iot/engine/ScheduleProfile;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/iot/engine/ScheduleProfile;->access$002(Lcom/iot/engine/ScheduleProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile$1;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v0}, Lcom/iot/engine/ScheduleProfile;->access$100(Lcom/iot/engine/ScheduleProfile;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile$1;->this$0:Lcom/iot/engine/ScheduleProfile;

    const-string v1, "NA"

    invoke-static {v0, v1}, Lcom/iot/engine/ScheduleProfile;->access$002(Lcom/iot/engine/ScheduleProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile$1;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v0}, Lcom/iot/engine/ScheduleProfile;->access$100(Lcom/iot/engine/ScheduleProfile;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
