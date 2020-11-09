.class Lcom/iot/engine/LivingRoom$1;
.super Ljava/lang/Object;
.source "LivingRoom.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/LivingRoom;->createImageView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/LivingRoom;

.field final synthetic val$iv:Lde/hdodenhof/circleimageview/CircleImageView;


# direct methods
.method constructor <init>(Lcom/iot/engine/LivingRoom;Lde/hdodenhof/circleimageview/CircleImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/LivingRoom;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/iot/engine/LivingRoom$1;->this$0:Lcom/iot/engine/LivingRoom;

    iput-object p2, p0, Lcom/iot/engine/LivingRoom$1;->val$iv:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/iot/engine/LivingRoom$1;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v0}, Lcom/iot/engine/LivingRoom;->access$000(Lcom/iot/engine/LivingRoom;)Ltyrantgit/explosionfield/ExplosionField;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/LivingRoom$1;->val$iv:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Ltyrantgit/explosionfield/ExplosionField;->explode(Landroid/view/View;)V

    .line 279
    return-void
.end method
