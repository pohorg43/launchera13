.class public Lcom/airbnb/lottie/j$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/airbnb/lottie/j$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/j;->t(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lcom/airbnb/lottie/j;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;F)V
    .registers 3

    iput-object p1, p0, Lcom/airbnb/lottie/j$j;->b:Lcom/airbnb/lottie/j;

    iput p2, p0, Lcom/airbnb/lottie/j$j;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/d;)V
    .registers 2

    iget-object p1, p0, Lcom/airbnb/lottie/j$j;->b:Lcom/airbnb/lottie/j;

    iget p0, p0, Lcom/airbnb/lottie/j$j;->a:F

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/j;->t(F)V

    return-void
.end method
