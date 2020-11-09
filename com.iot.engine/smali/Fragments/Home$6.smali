.class LFragments/Home$6;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/Home;->createImageView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Home;

.field final synthetic val$iv:Lde/hdodenhof/circleimageview/CircleImageView;


# direct methods
.method constructor <init>(LFragments/Home;Lde/hdodenhof/circleimageview/CircleImageView;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Home;

    .prologue
    .line 757
    iput-object p1, p0, LFragments/Home$6;->this$0:LFragments/Home;

    iput-object p2, p0, LFragments/Home$6;->val$iv:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, LFragments/Home$6;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$1700(LFragments/Home;)Ltyrantgit/explosionfield/ExplosionField;

    move-result-object v0

    iget-object v1, p0, LFragments/Home$6;->val$iv:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Ltyrantgit/explosionfield/ExplosionField;->explode(Landroid/view/View;)V

    .line 762
    return-void
.end method
