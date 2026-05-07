.class public final Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRotationForUserDegreesRotated(FII)I
    .registers 8

    const/4 p0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_32

    if-eq p2, v1, :cond_a

    const/4 p2, -0x1

    goto :goto_5d

    :cond_a
    rsub-int v1, p3, 0x168

    int-to-float v1, v1

    cmpl-float v3, p1, v1

    if-gez v3, :cond_5c

    rsub-int/lit8 v3, p3, 0x5a

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_19

    goto :goto_5c

    :cond_19
    add-int/lit16 v0, p3, 0xb4

    int-to-float v0, v0

    cmpl-float v3, p1, v0

    if-lez v3, :cond_26

    cmpg-float v1, p1, v1

    if-gez v1, :cond_26

    move p2, v2

    goto :goto_5d

    :cond_26
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_5d

    add-int/lit8 p3, p3, 0x5a

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_5d

    goto :goto_5a

    :cond_32
    add-int/lit16 v2, p3, 0x10e

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gez v2, :cond_5c

    int-to-float v2, p3

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_3f

    goto :goto_5c

    :cond_3f
    cmpl-float v0, p1, v2

    if-lez v0, :cond_4c

    rsub-int v0, p3, 0xb4

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4c

    move p2, v1

    goto :goto_5d

    :cond_4c
    rsub-int v0, p3, 0xb4

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5d

    rsub-int p3, p3, 0x10e

    int-to-float p3, p3

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_5d

    :goto_5a
    move p2, p0

    goto :goto_5d

    :cond_5c
    :goto_5c
    move p2, v0

    :cond_5d
    :goto_5d
    return p2
.end method
