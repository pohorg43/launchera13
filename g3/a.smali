.class public Lg3/a;
.super Lf3/a;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lf3/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lk3/c;
    .registers 1

    new-instance p0, Ll3/a;

    invoke-direct {p0}, Ll3/a;-><init>()V

    return-object p0
.end method
