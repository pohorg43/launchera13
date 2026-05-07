.class public Lcom/android/launcher3/graphics/BitmapCreationCheck;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;
    }
.end annotation


# static fields
.field public static final ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "BitmapCreationCheck"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/graphics/BitmapCreationCheck;->lambda$startTracking$0(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)V

    return-void
.end method

.method private static synthetic lambda$startTracking$0(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->access$200(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)V

    return-void
.end method

.method public static startTracking(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;-><init>(Lcom/android/launcher3/graphics/BitmapCreationCheck$1;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance p0, Lcom/android/launcher3/graphics/a;

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/a;-><init>(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)V

    sput-object p0, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Ljava/lang/Runnable;

    return-void
.end method
