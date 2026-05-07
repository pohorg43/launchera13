.class Lcom/android/launcher/share/ShareAppHelper$ShareAppHelperHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/share/ShareAppHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareAppHelperHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/launcher/share/ShareAppHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/share/ShareAppHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/share/ShareAppHelper;-><init>(Lcom/android/launcher/share/ShareAppHelper$1;)V

    sput-object v0, Lcom/android/launcher/share/ShareAppHelper$ShareAppHelperHolder;->INSTANCE:Lcom/android/launcher/share/ShareAppHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/android/launcher/share/ShareAppHelper;
    .registers 1

    sget-object v0, Lcom/android/launcher/share/ShareAppHelper$ShareAppHelperHolder;->INSTANCE:Lcom/android/launcher/share/ShareAppHelper;

    return-object v0
.end method
