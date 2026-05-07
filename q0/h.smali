.class public interface abstract Lq0/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lq0/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lq0/j$a;

    invoke-direct {v0}, Lq0/j$a;-><init>()V

    new-instance v1, Lq0/j;

    iget-object v0, v0, Lq0/j$a;->a:Ljava/util/Map;

    invoke-direct {v1, v0}, Lq0/j;-><init>(Ljava/util/Map;)V

    sput-object v1, Lq0/h;->a:Lq0/h;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
