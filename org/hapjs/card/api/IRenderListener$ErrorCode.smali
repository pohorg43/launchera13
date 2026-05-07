.class public Lorg/hapjs/card/api/IRenderListener$ErrorCode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hapjs/card/api/IRenderListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCode"
.end annotation


# static fields
.field public static final ERROR_FILE_NOT_FOUND:I = 0x3eb

.field public static final ERROR_INCOMPATIBLE:I = 0x3ee

.field public static final ERROR_INITIAL:I = 0x3e9

.field public static final ERROR_INSPECTOR_UNREADY:I = 0x3ef

.field public static final ERROR_INSTALL_FAILED:I = 0x3ec

.field public static final ERROR_PAGE_NOT_FOUND:I = 0x3ed

.field public static final ERROR_UNKNOWN:I = 0x3e8

.field public static final ERROR_URL:I = 0x3ea


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
