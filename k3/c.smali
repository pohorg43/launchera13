.class public abstract Lk3/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/c$a;
    }
.end annotation


# static fields
.field public static final a:Lk3/c$a;

.field public static final b:Lk3/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lk3/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk3/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lk3/c;->a:Lk3/c$a;

    sget-object v0, Le3/b;->a:Le3/a;

    invoke-virtual {v0}, Le3/a;->b()Lk3/c;

    move-result-object v0

    sput-object v0, Lk3/c;->b:Lk3/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method
