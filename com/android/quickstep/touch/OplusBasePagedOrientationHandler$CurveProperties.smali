.class public Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurveProperties"
.end annotation


# instance fields
.field private halfPageSize:I

.field private halfScreenSize:I

.field private screenCenter:I

.field private scroll:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHalfPageSize()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->halfPageSize:I

    return p0
.end method

.method public final getHalfScreenSize()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->halfScreenSize:I

    return p0
.end method

.method public final getScreenCenter()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->screenCenter:I

    return p0
.end method

.method public final getScroll()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->scroll:I

    return p0
.end method

.method public final setHalfPageSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->halfPageSize:I

    return-void
.end method

.method public final setHalfScreenSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->halfScreenSize:I

    return-void
.end method

.method public final setScreenCenter(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->screenCenter:I

    return-void
.end method

.method public final setScroll(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;->scroll:I

    return-void
.end method
