.class public abstract Lcom/google/android/gms/internal/zzmh$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzmh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmh$zza$zza;
    }
.end annotation


# direct methods
.method public static zzbl(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmh;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzmh;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzmh;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzmh$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzmh$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmi$zza;->zzbm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmi;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/appdatasearch/UsageInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/zzj;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/appdatasearch/UsageInfo;

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/gms/internal/zzmh$zza;->zza(Lcom/google/android/gms/internal/zzmi;Ljava/lang/String;[Lcom/google/android/gms/appdatasearch/UsageInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmi$zza;->zzbm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh$zza;->zza(Lcom/google/android/gms/internal/zzmi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmi$zza;->zzbm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh$zza;->zzb(Lcom/google/android/gms/internal/zzmi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmi$zza;->zzbm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmi;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzmh$zza;->zza(Lcom/google/android/gms/internal/zzmi;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;->CREATOR:Lcom/google/android/gms/appdatasearch/zzf;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/appdatasearch/zzf;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzmi$zza;->zzbm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmi;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzmh$zza;->zza(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Lcom/google/android/gms/internal/zzmi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_6
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmi$zza;->zzbm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmi;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/zzmh$zza;->zza(Lcom/google/android/gms/internal/zzmi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmi$zza;->zzbm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmi;

    move-result-object v2

    sget-object v0, Lcom/google/firebase/appindexing/internal/ActionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/appindexing/internal/ActionImpl;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzmh$zza;->zza(Lcom/google/android/gms/internal/zzmi;[Lcom/google/firebase/appindexing/internal/ActionImpl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
