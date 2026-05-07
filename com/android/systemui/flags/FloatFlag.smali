.class public final Lcom/android/systemui/flags/FloatFlag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/flags/ParcelableFlag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/flags/FloatFlag$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/flags/ParcelableFlag<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/flags/FloatFlag;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final Companion:Lcom/android/systemui/flags/FloatFlag$Companion;


# instance fields
.field private final default:F

.field private final id:I

.field private final teamfood:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/systemui/flags/FloatFlag$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/flags/FloatFlag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/flags/FloatFlag;->Companion:Lcom/android/systemui/flags/FloatFlag$Companion;

    new-instance v0, Lcom/android/systemui/flags/FloatFlag$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/android/systemui/flags/FloatFlag$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/android/systemui/flags/FloatFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/FloatFlag;-><init>(IFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/FloatFlag;-><init>(IFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IFZ)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/flags/FloatFlag;->id:I

    iput p2, p0, Lcom/android/systemui/flags/FloatFlag;->default:F

    iput-boolean p3, p0, Lcom/android/systemui/flags/FloatFlag;->teamfood:Z

    return-void
.end method

.method public synthetic constructor <init>(IFZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/flags/FloatFlag;-><init>(IFZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/flags/FloatFlag;-><init>(IFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/flags/FloatFlag;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/flags/FloatFlag;IFZILjava/lang/Object;)Lcom/android/systemui/flags/FloatFlag;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getId()I

    move-result p1

    :cond_8
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getDefault()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_14
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1c

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getTeamfood()Z

    move-result p3

    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/flags/FloatFlag;->copy(IFZ)Lcom/android/systemui/flags/FloatFlag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getId()I

    move-result p0

    return p0
.end method

.method public final component2()F
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getDefault()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final component3()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getTeamfood()Z

    move-result p0

    return p0
.end method

.method public final copy(IFZ)Lcom/android/systemui/flags/FloatFlag;
    .registers 4

    new-instance p0, Lcom/android/systemui/flags/FloatFlag;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/flags/FloatFlag;-><init>(IFZ)V

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    invoke-static {p0}, Lcom/android/systemui/flags/ParcelableFlag$DefaultImpls;->describeContents(Lcom/android/systemui/flags/ParcelableFlag;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/systemui/flags/FloatFlag;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/systemui/flags/FloatFlag;

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/flags/FloatFlag;->getId()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getDefault()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/flags/FloatFlag;->getDefault()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getTeamfood()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/flags/FloatFlag;->getTeamfood()Z

    move-result p1

    if-eq p0, p1, :cond_31

    return v2

    :cond_31
    return v0
.end method

.method public getDefault()Ljava/lang/Float;
    .registers 1

    iget p0, p0, Lcom/android/systemui/flags/FloatFlag;->default:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefault()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getDefault()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getId()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/flags/FloatFlag;->id:I

    return p0
.end method

.method public getTeamfood()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/flags/FloatFlag;->teamfood:Z

    return p0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getDefault()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getTeamfood()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    :cond_1c
    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "FloatFlag(id="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getDefault()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", teamfood="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getTeamfood()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/systemui/flags/FloatFlag;->getDefault()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
