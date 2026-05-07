.class public final Lq0/e$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq0/o<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lq0/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/e$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq0/e$c$a;

    invoke-direct {v0, p0}, Lq0/e$c$a;-><init>(Lq0/e$c;)V

    iput-object v0, p0, Lq0/e$c;->a:Lq0/e$a;

    return-void
.end method


# virtual methods
.method public a(Lq0/r;)Lq0/n;
    .registers 2
    .param p1  # Lq0/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/r;",
            ")",
            "Lq0/n<",
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lq0/e;

    iget-object p0, p0, Lq0/e$c;->a:Lq0/e$a;

    invoke-direct {p1, p0}, Lq0/e;-><init>(Lq0/e$a;)V

    return-object p1
.end method
