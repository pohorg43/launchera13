.class public final Lw3/c;
.super Lw3/f;
.source ""


# static fields
.field public static final f:Lw3/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lw3/c;

    invoke-direct {v0}, Lw3/c;-><init>()V

    sput-object v0, Lw3/c;->f:Lw3/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    sget v1, Lw3/l;->b:I

    sget v2, Lw3/l;->c:I

    sget-wide v3, Lw3/l;->d:J

    const-string v5, "DefaultDispatcher"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lw3/f;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
