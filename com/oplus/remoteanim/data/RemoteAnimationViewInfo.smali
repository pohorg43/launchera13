.class public final Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo$CREATOR;


# instance fields
.field private final fromPackage:Ljava/lang/String;

.field private final launchPackage:Ljava/lang/String;

.field private final viewLocation:Landroid/graphics/RectF;

.field private final viewSurface:Landroid/view/SurfaceControl;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->CREATOR:Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    const-class v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "parcel.readParcelable(Re…::class.java.classLoader)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "viewLocation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewSurface:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewLocation:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->launchPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->fromPackage:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;Landroid/view/SurfaceControl;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewSurface:Landroid/view/SurfaceControl;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewLocation:Landroid/graphics/RectF;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->launchPackage:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->fromPackage:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->copy(Landroid/view/SurfaceControl;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final component2()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewLocation:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->launchPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->fromPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Landroid/view/SurfaceControl;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;
    .registers 5

    const-string p0, "viewLocation"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    iget-object v1, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewSurface:Landroid/view/SurfaceControl;

    iget-object v3, p1, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewSurface:Landroid/view/SurfaceControl;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewLocation:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewLocation:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->launchPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->launchPackage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->fromPackage:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->fromPackage:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getFromPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->fromPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getLaunchPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->launchPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getViewLocation()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewLocation:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getViewSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewLocation:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->launchPackage:Ljava/lang/String;

    if-nez v0, :cond_1c

    move v0, v1

    goto :goto_20

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_20
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->fromPackage:Ljava/lang/String;

    if-nez p0, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2c
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "RemoteAnimationViewInfo(viewSurface="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewLocation:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", launchPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->launchPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', fromPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->fromPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->viewLocation:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->launchPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->fromPackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
