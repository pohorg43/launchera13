.class public final Lq3/t1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq3/s0;
.implements Lq3/p;


# static fields
.field public static final a:Lq3/t1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq3/t1;

    invoke-direct {v0}, Lq3/t1;-><init>()V

    sput-object v0, Lq3/t1;->a:Lq3/t1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Throwable;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public getParent()Lq3/i1;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
