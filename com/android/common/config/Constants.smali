.class public final Lcom/android/common/config/Constants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/config/Constants$Packages;,
        Lcom/android/common/config/Constants$Permissions;,
        Lcom/android/common/config/Constants$AppWidgetCommands;
    }
.end annotation


# static fields
.field public static final AUTHORITIES_LAUNCHER_FILEPROVIDER:Ljava/lang/String; = "com.android.launcher.file_provider"

.field public static final CHARSET_UTF_8:Ljava/nio/charset/Charset;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/android/common/config/Constants;

.field public static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field public static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x55

.field public static final S_DEBUG:Z = true


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/config/Constants;

    invoke-direct {v0}, Lcom/android/common/config/Constants;-><init>()V

    sput-object v0, Lcom/android/common/config/Constants;->INSTANCE:Lcom/android/common/config/Constants;

    const-string/jumbo v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/common/config/Constants;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
