.class Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/BaseIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoopDrawable"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
