.class public final Lcom/android/systemui/flags/LongFlag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/flags/ParcelableFlag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/flags/LongFlag$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/flags/ParcelableFlag<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/flags/LongFlag;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final Companion:Lcom/android/systemui/flags/LongFlag$Companion;


# instance fields
.field private final default:J

.field private final id:I

.field private final teamfood:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/systemui/flags/LongFlag$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/flags/LongFlag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/flags/LongFlag;->Companion:Lcom/android/systemui/flags/LongFlag$Companion;

    new-instance v0, Lcom/android/systemui/flags/LongFlag$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/android/systemui/flags/LongFlag$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/android/systemui/flags/LongFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/flags/LongFlag;-><init>(IJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 11
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/flags/LongFlag;-><init>(IJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJZ)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/flags/LongFlag;->id:I

    iput-wide p2, p0, Lcom/android/systemui/flags/LongFlag;->default:J

    iput-boolean p4, p0, Lcom/android/systemui/flags/LongFlag;->teamfood:Z

    return-void
.end method

.method public synthetic constructor <init>(IJZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_6

    const-wide/16 p2, 0x0

    :cond_6
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_b

    const/4 p4, 0x0

    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/flags/LongFlag;-><init>(IJZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/flags/LongFlag;-><init>(IJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/flags/LongFlag;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/flags/LongFlag;IJZILjava/lang/Object;)Lcom/android/systemui/flags/LongFlag;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getId()I

    move-result p1

    :cond_8
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getDefault()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_14
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1c

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getTeamfood()Z

    move-result p4

    :cond_1c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/flags/LongFlag;->copy(IJZ)Lcom/android/systemui/flags/LongFlag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getId()I

    move-result p0

    return p0
.end method

.method public final component2()J
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getDefault()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component3()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getTeamfood()Z

    move-result p0

    return p0
.end method

.method public final copy(IJZ)Lcom/android/systemui/flags/LongFlag;
    .registers 5

    new-instance p0, Lcom/android/systemui/flags/LongFlag;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/flags/LongFlag;-><init>(IJZ)V

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    invoke-static {p0}, Lcom/android/systemui/flags/ParcelableFlag$DefaultImpls;->describeContents(Lcom/android/systemui/flags/ParcelableFlag;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/systemui/flags/LongFlag;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/systemui/flags/LongFlag;

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/flags/LongFlag;->getId()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getDefault()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/systemui/flags/LongFlag;->getDefault()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2c

    return v2

    :cond_2c
    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getTeamfood()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/flags/LongFlag;->getTeamfood()Z

    move-result p1

    if-eq p0, p1, :cond_37

    return v2

    :cond_37
    return v0
.end method

.method public getDefault()Ljava/lang/Long;
    .registers 3

    iget-wide v0, p0, Lcom/android/systemui/flags/LongFlag;->default:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefault()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getDefault()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/flags/LongFlag;->id:I

    return p0
.end method

.method public getTeamfood()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/flags/LongFlag;->teamfood:Z

    return p0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getDefault()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getTeamfood()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    :cond_1c
    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "LongFlag(id="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getDefault()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", teamfood="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getTeamfood()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/systemui/flags/LongFlag;->getDefault()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
