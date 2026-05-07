.class public final Lorg/hapjs/card/sdk/BuildConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = "lite"

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "org.hapjs.card.sdk"

.field public static final LITE_MODE:Ljava/lang/Boolean;

.field public static final VERSION_CODE:I = 0x9d0c

.field public static final VERSION_NAME:Ljava/lang/String; = "4.2.4"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/hapjs/card/sdk/BuildConfig;->LITE_MODE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
