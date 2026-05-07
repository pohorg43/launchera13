.class public final Lk3/c$a;
.super Lk3/c;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lk3/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lk3/c;-><init>()V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 1

    sget-object p0, Lk3/c$a$a;->a:Lk3/c$a$a;

    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 1

    sget-object p0, Lk3/c;->b:Lk3/c;

    invoke-virtual {p0}, Lk3/c;->a()I

    move-result p0

    return p0
.end method
