.class public Lq0/v$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq0/o<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lq0/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/v$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq0/v$a;

    invoke-direct {v0}, Lq0/v$a;-><init>()V

    sput-object v0, Lq0/v$a;->a:Lq0/v$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq0/r;)Lq0/n;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/r;",
            ")",
            "Lq0/n<",
            "TModel;TModel;>;"
        }
    .end annotation

    sget-object p0, Lq0/v;->a:Lq0/v;

    return-object p0
.end method
