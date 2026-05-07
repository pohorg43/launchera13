.class public final Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUILockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cell"
.end annotation


# static fields
.field public static final c:[[Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    const-class v1, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    const/4 v3, 0x3

    if-ge v2, v3, :cond_25

    move v4, v1

    :goto_14
    if-ge v4, v3, :cond_22

    aget-object v5, v0, v2

    new-instance v6, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    invoke-direct {v6, v2, v4}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;-><init>(II)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_25
    sput-object v0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->c:[[Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    return-void

    :array_28
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a(II)V

    iput p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    iput p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    return-void
.end method

.method public static a(II)V
    .registers 3

    if-ltz p0, :cond_12

    const/4 v0, 0x2

    if-gt p0, v0, :cond_12

    if-ltz p1, :cond_a

    if-gt p1, v0, :cond_a

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "row must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(II)Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;
    .registers 3

    invoke-static {p0, p1}, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a(II)V

    sget-object v0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->c:[[Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;

    aget-object p0, v0, p0

    aget-object p0, p0, p1

    return-object p0
.end method


# virtual methods
.method public getColumn()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    return p0
.end method

.method public getRow()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "(row="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$Cell;->b:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
