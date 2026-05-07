.class public final Lcom/oplus/channel/server/data/Command$Method;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/channel/server/data/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Method"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/channel/server/data/Command$Method;

.field public static final Observe:I = 0x2

.field public static final ReplaceObserve:I = 0x3

.field public static final Request:I = 0x0

.field public static final RequestOnce:I = 0x1

.field public static final StopObserve:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/data/Command$Method;

    invoke-direct {v0}, Lcom/oplus/channel/server/data/Command$Method;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/data/Command$Method;->INSTANCE:Lcom/oplus/channel/server/data/Command$Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
