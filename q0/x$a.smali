.class public Lq0/x$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq0/o<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq0/r;)Lq0/n;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/r;",
            ")",
            "Lq0/n<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p0, Lq0/x;

    const-class v0, Lq0/g;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {p1, v0, v1}, Lq0/r;->b(Ljava/lang/Class;Ljava/lang/Class;)Lq0/n;

    move-result-object p1

    invoke-direct {p0, p1}, Lq0/x;-><init>(Lq0/n;)V

    return-object p0
.end method
