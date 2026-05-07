.class public final synthetic La4/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic a:La4/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, La4/a;

    invoke-direct {v0}, La4/a;-><init>()V

    sput-object v0, La4/a;->a:La4/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 2

    check-cast p1, La4/g;

    iget-wide p0, p1, La4/g;->a:J

    return-wide p0
.end method
