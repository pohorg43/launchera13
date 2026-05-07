.class public final Lo3/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo3/e;


# static fields
.field public static final a:Lo3/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo3/b;

    invoke-direct {v0}, Lo3/b;-><init>()V

    sput-object v0, Lo3/b;->a:Lo3/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 1

    sget-object p0, Lz2/t;->a:Lz2/t;

    return-object p0
.end method
