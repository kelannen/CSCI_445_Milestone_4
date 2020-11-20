.class Lcom/iot/engine/ScheduleProfile$2;
.super Ljava/lang/Object;
.source "ScheduleProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/ScheduleProfile;->initializeControls()V
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
    .line 190
    iput-object p1, p0, Lcom/iot/engine/ScheduleProfile$2;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/iot/engine/ScheduleProfile$2;->this$0:Lcom/iot/engine/ScheduleProfile;

    invoke-static {v0}, Lcom/iot/engine/ScheduleProfile;->access$200(Lcom/iot/engine/ScheduleProfile;)V

    .line 194
    return-void
.end method
