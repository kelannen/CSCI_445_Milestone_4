.class public Lcom/google/firebase/appindexing/internal/ActionImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/appindexing/internal/ActionImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aMI:Ljava/lang/String;

.field private final aMJ:Ljava/lang/String;

.field private final aMK:Ljava/lang/String;

.field private final aML:Ljava/lang/String;

.field private final aMM:Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;

.field private final aMN:Ljava/lang/String;

.field public final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/appindexing/internal/zza;

    invoke-direct {v0}, Lcom/google/firebase/appindexing/internal/zza;-><init>()V

    sput-object v0, Lcom/google/firebase/appindexing/internal/ActionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->mVersionCode:I

    iput-object p2, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMI:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMK:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aML:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMM:Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;

    iput-object p7, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionImpl { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{ actionType: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' } "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{ objectName: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' } "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{ objectUrl: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' } "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aML:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "{ objectSameAs: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aML:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' } "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMM:Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;

    if-eqz v1, :cond_1

    const-string v1, "{ metadata: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMM:Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;

    invoke-virtual {v2}, Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' } "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMN:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "{ actionStatus: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' } "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/appindexing/internal/zza;->zza(Lcom/google/firebase/appindexing/internal/ActionImpl;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzcke()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMI:Ljava/lang/String;

    return-object v0
.end method

.method public zzckf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMJ:Ljava/lang/String;

    return-object v0
.end method

.method public zzckg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMK:Ljava/lang/String;

    return-object v0
.end method

.method public zzckh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aML:Ljava/lang/String;

    return-object v0
.end method

.method public zzcki()Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMM:Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;

    return-object v0
.end method

.method public zzckj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/ActionImpl;->aMN:Ljava/lang/String;

    return-object v0
.end method
