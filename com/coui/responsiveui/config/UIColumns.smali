.class public Lcom/coui/responsiveui/config/UIColumns;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coui/responsiveui/config/UIColumns;->a:I

    iput p2, p0, Lcom/coui/responsiveui/config/UIColumns;->b:I

    return-void
.end method


# virtual methods
.method public getColumnWidthDp()I
    .registers 1

    iget p0, p0, Lcom/coui/responsiveui/config/UIColumns;->b:I

    return p0
.end method

.method public getColumnsCount()I
    .registers 1

    iget p0, p0, Lcom/coui/responsiveui/config/UIColumns;->a:I

    return p0
.end method

.method public setColumnWidthDp(I)V
    .registers 2

    iput p1, p0, Lcom/coui/responsiveui/config/UIColumns;->b:I

    return-void
.end method

.method public setColumnsCount(I)V
    .registers 2

    iput p1, p0, Lcom/coui/responsiveui/config/UIColumns;->a:I

    return-void
.end method
