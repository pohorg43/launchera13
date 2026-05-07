.class public Lcom/airbnb/lottie/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/k;->a:I

    iput p2, p0, Lcom/airbnb/lottie/k;->b:I

    iput-object p3, p0, Lcom/airbnb/lottie/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/airbnb/lottie/k;->d:Ljava/lang/String;

    return-void
.end method
