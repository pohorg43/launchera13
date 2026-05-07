.class public Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:F

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->f0:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$SideStyle$Builder;->f:I

    return-void
.end method
