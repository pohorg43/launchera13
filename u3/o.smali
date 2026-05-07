.class public final Lu3/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lt3/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt3/e<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lu3/o;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu3/o;

    invoke-direct {v0}, Lu3/o;-><init>()V

    sput-object v0, Lu3/o;->a:Lu3/o;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
