.class public LAdapter/AdapterActivity$Holder;
.super Ljava/lang/Object;
.source "AdapterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/AdapterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Holder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field final synthetic this$0:LAdapter/AdapterActivity;

.field tv:Landroid/widget/TextView;

.field tvActivityTime:Landroid/widget/TextView;

.field txtRoomName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/AdapterActivity;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/AdapterActivity;

    .prologue
    .line 58
    iput-object p1, p0, LAdapter/AdapterActivity$Holder;->this$0:LAdapter/AdapterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
