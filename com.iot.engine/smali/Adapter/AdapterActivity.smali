.class public LAdapter/AdapterActivity;
.super Landroid/widget/BaseAdapter;
.source "AdapterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/AdapterActivity$Holder;
    }
.end annotation


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field context:Landroid/content/Context;

.field imageId:[I

.field msgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, LAdapter/AdapterActivity;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prgmImages"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "msgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, LAdapter/AdapterActivity;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, LAdapter/AdapterActivity;->imageId:[I

    .line 40
    iput-object p3, p0, LAdapter/AdapterActivity;->msgList:Ljava/util/ArrayList;

    .line 41
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, LAdapter/AdapterActivity;->inflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, LAdapter/AdapterActivity;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    .line 67
    new-instance v0, LAdapter/AdapterActivity$Holder;

    invoke-direct {v0, p0}, LAdapter/AdapterActivity$Holder;-><init>(LAdapter/AdapterActivity;)V

    .line 69
    .local v0, "holder":LAdapter/AdapterActivity$Holder;
    sget-object v2, LAdapter/AdapterActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040066

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "rowView":Landroid/view/View;
    const v2, 0x7f0d0189

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, LAdapter/AdapterActivity$Holder;->tv:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f0d0154

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, LAdapter/AdapterActivity$Holder;->txtRoomName:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f0d0188

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, LAdapter/AdapterActivity$Holder;->img:Landroid/widget/ImageView;

    .line 73
    const v2, 0x7f0d018a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, LAdapter/AdapterActivity$Holder;->tvActivityTime:Landroid/widget/TextView;

    .line 75
    iget-object v3, v0, LAdapter/AdapterActivity$Holder;->txtRoomName:Landroid/widget/TextView;

    iget-object v2, p0, LAdapter/AdapterActivity;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    const-string v4, "RoomName"

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v3, v0, LAdapter/AdapterActivity$Holder;->tv:Landroid/widget/TextView;

    iget-object v2, p0, LAdapter/AdapterActivity;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    const-string v4, "Notify_Message"

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, v0, LAdapter/AdapterActivity$Holder;->tvActivityTime:Landroid/widget/TextView;

    iget-object v2, p0, LAdapter/AdapterActivity;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    const-string v4, "activity_time"

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, LAdapter/AdapterActivity;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    const-string v3, "UserImage"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, LAdapter/AdapterActivity;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    const-string v3, "UserImage"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, LAdapter/AdapterActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, LAdapter/AdapterActivity;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    const-string v5, "UserImage"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/squareup/picasso/Picasso;->invalidate(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, LAdapter/AdapterActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, LAdapter/AdapterActivity;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    const-string v5, "UserImage"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    sget-object v3, Lcom/squareup/picasso/MemoryPolicy;->NO_CACHE:Lcom/squareup/picasso/MemoryPolicy;

    new-array v4, v6, [Lcom/squareup/picasso/MemoryPolicy;

    .line 86
    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    sget-object v3, Lcom/squareup/picasso/NetworkPolicy;->NO_CACHE:Lcom/squareup/picasso/NetworkPolicy;

    new-array v4, v6, [Lcom/squareup/picasso/NetworkPolicy;

    .line 87
    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->networkPolicy(Lcom/squareup/picasso/NetworkPolicy;[Lcom/squareup/picasso/NetworkPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fetch()V

    .line 90
    iget-object v2, p0, LAdapter/AdapterActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, LAdapter/AdapterActivity;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    const-string v5, "UserImage"

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const v3, 0x7f020175

    .line 91
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v0, LAdapter/AdapterActivity$Holder;->img:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 104
    :goto_0
    return-object v1

    .line 94
    :cond_0
    iget-object v2, p0, LAdapter/AdapterActivity;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    const-string v3, "Notify_Message"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Physically switch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, v0, LAdapter/AdapterActivity$Holder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, LAdapter/AdapterActivity;->imageId:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, v0, LAdapter/AdapterActivity$Holder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, LAdapter/AdapterActivity;->imageId:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v2, v0, LAdapter/AdapterActivity$Holder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, LAdapter/AdapterActivity;->imageId:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
