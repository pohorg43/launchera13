.class public final Lcom/android/common/util/CharsetUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static CHARSET_UTF_8:Ljava/nio/charset/Charset;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/android/common/util/CharsetUtils;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/CharsetUtils;

    invoke-direct {v0}, Lcom/android/common/util/CharsetUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/CharsetUtils;->INSTANCE:Lcom/android/common/util/CharsetUtils;

    const-string/jumbo v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/CharsetUtils;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
