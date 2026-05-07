.class Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideManagerHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/appguide/AppGuideManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppGuideManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/launcher/guide/appguide/AppGuideManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/guide/appguide/AppGuideManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/guide/appguide/AppGuideManager;-><init>(Lcom/android/launcher/guide/appguide/AppGuideManager$1;)V

    sput-object v0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideManagerHolder;->INSTANCE:Lcom/android/launcher/guide/appguide/AppGuideManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/launcher/guide/appguide/AppGuideManager;
    .registers 1

    sget-object v0, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideManagerHolder;->INSTANCE:Lcom/android/launcher/guide/appguide/AppGuideManager;

    return-object v0
.end method
