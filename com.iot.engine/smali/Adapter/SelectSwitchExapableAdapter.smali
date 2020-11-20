.class public LAdapter/SelectSwitchExapableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SelectSwitchExapableAdapter.java"


# instance fields
.field private _context:Landroid/content/Context;

.field private _listDataChild:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private _listDataHeader:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mONOFFStatus:Ljava/lang/String;

.field private final mRoomFlag:[Ljava/lang/String;

.field mSwitchON:[I

.field myRoomImageList:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "mRoomFlag"    # [Ljava/lang/String;
    .param p5, "onoff"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "listDataHeader":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p3, "listChildData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 45
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LAdapter/SelectSwitchExapableAdapter;->myRoomImageList:[I

    .line 48
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, LAdapter/SelectSwitchExapableAdapter;->mSwitchON:[I

    .line 58
    iput-object p1, p0, LAdapter/SelectSwitchExapableAdapter;->_context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataHeader:Ljava/util/ArrayList;

    .line 60
    iput-object p3, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    .line 61
    iput-object p4, p0, LAdapter/SelectSwitchExapableAdapter;->mRoomFlag:[Ljava/lang/String;

    .line 62
    iput-object p5, p0, LAdapter/SelectSwitchExapableAdapter;->mONOFFStatus:Ljava/lang/String;

    .line 63
    return-void

    .line 45
    :array_0
    .array-data 4
        0x7f020065
        0x7f020110
        0x7f02010d
        0x7f020063
        0x7f020061
        0x7f02010f
        0x7f020199
        0x7f020194
        0x7f02010c
        0x7f020167
        0x7f020112
        0x7f02014a
    .end array-data

    .line 48
    :array_1
    .array-data 4
        0x7f020156
        0x7f02014b
        0x7f02014d
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f020153
        0x7f020154
        0x7f02015b
        0x7f020158
        0x7f020159
        0x7f02015a
        0x7f02015c
        0x7f02015d
        0x7f02015e
        0x7f02015f
        0x7f020160
        0x7f020161
        0x7f020162
        0x7f020163
        0x7f02014c
        0x7f020155
        0x7f02014e
        0x7f0200c1
        0x7f020114
        0x7f02018f
    .end array-data
.end method

.method static synthetic access$000(LAdapter/SelectSwitchExapableAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # LAdapter/SelectSwitchExapableAdapter;

    .prologue
    .line 35
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(LAdapter/SelectSwitchExapableAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LAdapter/SelectSwitchExapableAdapter;

    .prologue
    .line 35
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter;->mRoomFlag:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(LAdapter/SelectSwitchExapableAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # LAdapter/SelectSwitchExapableAdapter;

    .prologue
    .line 35
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter;->_context:Landroid/content/Context;

    return-object v0
.end method

.method private showRoomSwitchCount(I)I
    .locals 6
    .param p1, "groupposition"    # I

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "count":I
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 292
    .local v2, "mArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 293
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "selected_switch"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    add-int/lit8 v0, v0, 0x1

    .line 292
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_1
    return v0
.end method


# virtual methods
.method public changeAllDataSelection(Ljava/lang/String;)V
    .locals 7
    .param p1, "isSelected"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 314
    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 315
    .local v2, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 316
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 317
    .local v3, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "selected_switch"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 320
    .end local v3    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "j":I
    .end local v2    # "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter;->mRoomFlag:[Ljava/lang/String;

    const-string v5, "1"

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 324
    invoke-virtual {p0}, LAdapter/SelectSwitchExapableAdapter;->notifyDataSetChanged()V

    .line 338
    :goto_2
    return-void

    .line 326
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 327
    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 328
    .restart local v2    # "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 329
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 330
    .restart local v3    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "selected_switch"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 333
    .end local v3    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 335
    .end local v1    # "j":I
    .end local v2    # "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter;->mRoomFlag:[Ljava/lang/String;

    const-string v5, "0"

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 336
    invoke-virtual {p0}, LAdapter/SelectSwitchExapableAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public getAllSwitchItem()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosititon"    # I

    .prologue
    .line 67
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 72
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, LAdapter/SelectSwitchExapableAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 81
    .local v4, "childText":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p4, :cond_0

    .line 82
    iget-object v1, p0, LAdapter/SelectSwitchExapableAdapter;->_context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 83
    .local v10, "infalInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04006e

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 86
    .end local v10    # "infalInflater":Landroid/view/LayoutInflater;
    :cond_0
    const v1, 0x7f0d01a1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 87
    .local v12, "switchName":Landroid/widget/TextView;
    const v1, 0x7f0d01a0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 88
    .local v11, "switchImage":Landroid/widget/ImageView;
    const v1, 0x7f0d019f

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/AppCompatCheckBox;

    .line 89
    .local v8, "cbSwitchSelect":Landroid/support/v7/widget/AppCompatCheckBox;
    const v1, 0x7f0d0114

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .line 90
    .local v6, "seekDimmer":Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
    const v1, 0x7f0d0112

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 91
    .local v5, "layoutDimmer":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    const-string v1, "SwitchName"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const-string v1, "selected_switch"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 98
    const-string v1, "DimmerStatus"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, LAdapter/SelectSwitchExapableAdapter;->mONOFFStatus:Ljava/lang/String;

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    const-string v1, "DimmerValue"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int/lit8 v9, v1, 0x4b

    .line 102
    .local v9, "curval":I
    invoke-virtual {v6, v9}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 114
    .end local v9    # "curval":I
    :goto_0
    iget-object v2, p0, LAdapter/SelectSwitchExapableAdapter;->mSwitchON:[I

    const-string v1, "switch_image_id"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget v1, v2, v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    new-instance v1, LAdapter/SelectSwitchExapableAdapter$1;

    move-object v2, p0

    move v3, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, LAdapter/SelectSwitchExapableAdapter$1;-><init>(LAdapter/SelectSwitchExapableAdapter;ILjava/util/HashMap;Landroid/widget/LinearLayout;Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;I)V

    invoke-virtual {v8, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    new-instance v1, LAdapter/SelectSwitchExapableAdapter$2;

    invoke-direct {v1, p0, p1, v4, p2}, LAdapter/SelectSwitchExapableAdapter$2;-><init>(LAdapter/SelectSwitchExapableAdapter;ILjava/util/HashMap;I)V

    invoke-virtual {v6, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 193
    return-object p4

    .line 104
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 111
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 198
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataChild:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 203
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataHeader:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter;->_listDataHeader:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 213
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 220
    invoke-virtual {p0, p1}, LAdapter/SelectSwitchExapableAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 222
    .local v4, "mRoomData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 223
    iget-object v7, p0, LAdapter/SelectSwitchExapableAdapter;->_context:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 224
    .local v1, "infalInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04006d

    invoke-virtual {v1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 227
    .end local v1    # "infalInflater":Landroid/view/LayoutInflater;
    :cond_0
    const v7, 0x7f0d019e

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 228
    .local v2, "lblListHeader":Landroid/widget/TextView;
    const v7, 0x7f0d0153

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 229
    .local v5, "roomImage":Landroid/widget/ImageView;
    const v7, 0x7f0d019f

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    .line 230
    .local v0, "cbSwitchSelect":Landroid/support/v7/widget/AppCompatCheckBox;
    const v7, 0x7f0d018c

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 232
    .local v6, "tvRoomCount":Landroid/widget/TextView;
    const-string v7, "RoomName"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v8, p0, LAdapter/SelectSwitchExapableAdapter;->myRoomImageList:[I

    const-string v7, "RoomImageType"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget v7, v8, v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    invoke-direct {p0, p1}, LAdapter/SelectSwitchExapableAdapter;->showRoomSwitchCount(I)I

    move-result v3

    .line 238
    .local v3, "mCount":I
    invoke-direct {p0, p1}, LAdapter/SelectSwitchExapableAdapter;->showRoomSwitchCount(I)I

    move-result v7

    if-nez v7, :cond_1

    .line 239
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :goto_0
    iget-object v7, p0, LAdapter/SelectSwitchExapableAdapter;->mRoomFlag:[Ljava/lang/String;

    aget-object v7, v7, p1

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 246
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 251
    :goto_1
    new-instance v7, LAdapter/SelectSwitchExapableAdapter$3;

    invoke-direct {v7, p0, p1}, LAdapter/SelectSwitchExapableAdapter$3;-><init>(LAdapter/SelectSwitchExapableAdapter;I)V

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 286
    return-object p3

    .line 241
    :cond_1
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method
