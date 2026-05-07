.class public final Lg1/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lg1/a$a;

    invoke-direct {v0}, Lg1/a$a;-><init>()V

    sput-object v0, Lg1/a;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lg1/a$b;

    invoke-direct {v0}, Lg1/a$b;-><init>()V

    sput-object v0, Lg1/a;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
