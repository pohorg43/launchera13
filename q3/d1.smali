.class public final Lq3/d1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq3/f0;


# static fields
.field public static final a:Lq3/d1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq3/d1;

    invoke-direct {v0}, Lq3/d1;-><init>()V

    sput-object v0, Lq3/d1;->a:Lq3/d1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Lb3/f;
    .registers 1

    sget-object p0, Lb3/h;->a:Lb3/h;

    return-object p0
.end method
